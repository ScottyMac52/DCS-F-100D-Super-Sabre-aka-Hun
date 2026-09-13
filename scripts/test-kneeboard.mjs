import test from 'node:test';
import assert from 'node:assert/strict';
import { existsSync, readFileSync, readdirSync } from 'node:fs';
import { join, resolve, dirname } from 'node:path';
import { fileURLToPath } from 'node:url';
import { spawnSync } from 'node:child_process';

const root = resolve(dirname(fileURLToPath(import.meta.url)), '..');

test('build:kneeboard produces source SVG and PNG folders', () => {
  const result = spawnSync('npm', ['run', 'build:kneeboard'], {
    cwd: root,
    encoding: 'utf8',
    shell: true,
    env: process.env,
  });
  assert.equal(result.status, 0, result.stderr || result.stdout);
  assert.ok(existsSync(join(root, 'kneeboard', 'source')));
  const pngRoot = join(root, 'kneeboard');
  const dirs = readdirSync(pngRoot).filter((name) => name !== 'source');
  assert.ok(dirs.length >= 1, 'expected a kneeboard PNG folder');
});

test('summary and blank MFD profiles remain part of the F-100D configuration', () => {
  const config = JSON.parse(readFileSync(join(root, 'config', 'kneeboard.json'), 'utf8'));

  assert.ok(
    config.summaryPages.some(({ file }) => file === '00-F100D-CONTROL-OVERVIEW'),
    'expected the F-100D control overview summary page',
  );

  for (const instance of [1, 2]) {
    const profileKey = `tm-mfd-${instance}-default`;
    const page = config.pages.find(({ deviceInstance }) => deviceInstance === `MFD${instance}`);

    assert.ok(page, `expected an MFD${instance} page`);
    assert.equal(page.deviceId, 'tm-mfd');
    assert.equal(page.profile, undefined, `MFD${instance} reference page must remain visible with an empty profile`);
    assert.deepEqual(page.controls, {}, `MFD${instance} must not define F-100D command labels`);
    assert.ok(existsSync(join(root, config.profiles[profileKey])), `expected ${profileKey} .diff.lua`);
  }
});
