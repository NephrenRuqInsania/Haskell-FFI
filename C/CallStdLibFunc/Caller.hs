import Foreign.C.Types

foreign import ccall "sin" c_sin :: CDouble -> CDouble

sin' :: Double -> Double
sin' = realToFrac . c_sin . realToFrac

main = do
	print $ sin' 3
	print $ sin' (pi / 4)
