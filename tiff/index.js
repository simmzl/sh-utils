import { execa } from 'execa';
import path from 'path';

const bg_path = './assets/bg.png'
const dist_path = './dist/'

const absolutePath = path.resolve(bg_path)
const retinaPath = absolutePath.replace(/\.([a-z]+)$/, '@2x.$1')

async function createTiff() {
  const originalExt = path.extname(bg_path)
  console.log(originalExt)
  const outputName = `${path.basename(bg_path, originalExt)}.tiff`
  console.log(outputName)
  const finalPath = path.join(dist_path, outputName)
  console.log(finalPath)
  await execa('tiffutil', ['-cathidpicheck', absolutePath, retinaPath, '-out', finalPath])
  console.log("done")
}

createTiff()