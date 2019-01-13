import Foreign.C.Types

foreign import ccall "inc" c_inc :: CInt -> IO CInt
foreign import ccall "add" c_add :: CInt -> CInt -> IO CInt

inc :: Int -> IO Int
inc = fmap fromIntegral . c_inc . fromIntegral

add :: Int -> Int -> IO Int
add x y = fmap fromIntegral $ c_add (fromIntegral x) (fromIntegral y)

main = do
	print =<< inc 3
	print =<< add 2 3
