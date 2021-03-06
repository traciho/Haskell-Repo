{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -fno-warn-implicit-prelude #-}
module Paths_Haskell_Repo (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/traaaaaci/Desktop/Haskell-Repo/.stack-work/install/x86_64-osx/lts-11.3/8.2.2/bin"
libdir     = "/Users/traaaaaci/Desktop/Haskell-Repo/.stack-work/install/x86_64-osx/lts-11.3/8.2.2/lib/x86_64-osx-ghc-8.2.2/Haskell-Repo-0.1.0.0-5i7hleAVi7M2fgpIOVPIEt"
dynlibdir  = "/Users/traaaaaci/Desktop/Haskell-Repo/.stack-work/install/x86_64-osx/lts-11.3/8.2.2/lib/x86_64-osx-ghc-8.2.2"
datadir    = "/Users/traaaaaci/Desktop/Haskell-Repo/.stack-work/install/x86_64-osx/lts-11.3/8.2.2/share/x86_64-osx-ghc-8.2.2/Haskell-Repo-0.1.0.0"
libexecdir = "/Users/traaaaaci/Desktop/Haskell-Repo/.stack-work/install/x86_64-osx/lts-11.3/8.2.2/libexec/x86_64-osx-ghc-8.2.2/Haskell-Repo-0.1.0.0"
sysconfdir = "/Users/traaaaaci/Desktop/Haskell-Repo/.stack-work/install/x86_64-osx/lts-11.3/8.2.2/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "Haskell_Repo_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "Haskell_Repo_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "Haskell_Repo_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "Haskell_Repo_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "Haskell_Repo_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "Haskell_Repo_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
