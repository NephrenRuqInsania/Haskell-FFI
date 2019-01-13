import Foreign.C.Types

foreign import ccall "inc" c_inc :: CInt -> CInt
foreign import ccall "add" c_add :: CInt -> CInt -> CInt

inc :: Int -> Int
inc = fromIntegral . c_inc . fromIntegral

add :: Int -> Int -> Int
add x y = fromIntegral $ c_add (fromIntegral x) (fromIntegral y)

main = do
	print $ inc 3
	print $ add 2 3
