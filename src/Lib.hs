module Lib
    ( plugin
    ) where

import GHC.Plugins

plugin :: Plugin
plugin = defaultPlugin{pluginRecompile = purePlugin}
