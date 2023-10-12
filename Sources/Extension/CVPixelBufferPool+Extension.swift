import CoreVideo
import Foundation

extension CVPixelBufferPool {
    @discardableResult
    func createPixelBuffer(_ pixelBuffer: UnsafeMutablePointer<CVPixelBuffer?>) -> CVReturn {
        CVPixelBufferPoolFlush(self, CVPixelBufferPoolFlushFlags.excessBuffers)
        return CVPixelBufferPoolCreatePixelBuffer(
            kCFAllocatorDefault,
            self,
            pixelBuffer
        )
    }
}
