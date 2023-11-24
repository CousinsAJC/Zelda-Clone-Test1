--[[
    Multiple states will need to be tracked throughout the game.
        1. gameState
            a. Start-Game
            b. Menus
            c. Gameplay - alive
            d. Gameplay - dead
            d. Credits

        2. Start-Game state
            a. This will most likely contain multiple loading screens and maybe a cutscene.
            b. "Made with Love", "Made by Sweetbriar Studios", etc.
        
        3. menuState
            a. Settings
            b. Pause
            c. Inventory
            d. UI - such as character/level up, maps, etc.
        
        4. Gameplay - alive
            a. most likely one state

        5. Gameplay - dead
            a. most likely a single state, may even be under menuStates.

        6. credits
            a. may only be the single state when game is won

]]