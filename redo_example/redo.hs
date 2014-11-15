import System.Environment (getArgs)
import System.Process (shell, createProcess, waitForProcess)

main :: IO ()
main = do
    -- Take args
    args <- getArgs
    -- Apply redo to all filenames passed as arguements
    mapM_ redo args

redo :: String -> IO ()
redo target = do
    (_, _, _, pHandle) <- createProcess $ shell $ "sh " ++ target ++ ".do"
    -- without waitForProcess the program exists, closing the shell process
    -- spawned
    _ <- waitForProcess pHandle
    return()
