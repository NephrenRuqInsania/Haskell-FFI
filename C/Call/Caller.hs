foreign import ccall "inc" c_inc :: Int -> Int
foreign import ccall "add" c_add :: Int -> Int -> Int

main = do
	print $ c_inc 3
	print $ c_add 2 3
