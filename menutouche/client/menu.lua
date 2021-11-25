local mainMenu = RageUI.CreateMenu("Menu Touche", "touche") -- Création du menu principale
local touche = false -- permet de dire si oui ou non le menu est ouvert

mainMenu.Closed = function() 
    touche = false 
end 

function Touche() -- Function qui fait l'entièreté du menu
    if touche then 
        touche = false 
            RageUI.Visible(mainMenu, false) 
        return 
    else 
        touche = true 
            RageUI.Visible(mainMenu, true)
            CreateThread(function()
                while touche do 
                    RageUI.IsVisible(mainMenu, function()
                        RageUI.Button("Téléphone", nil, {RightLabel = "F1"}, true, {}) -- Button affiché dans le menu
                        RageUI.Button("Menu Intéraction", nil, {RightLabel = "F5"}, true, {})
                        RageUI.Button("Menu Emote", nil, {RightLabel = "F3"}, true, {})
                        RageUI.Button("Ceinture", nil, {RightLabel = "K"}, true, {})
                        RageUI.Button("Coffre", nil, {RightLabel = "L"}, true, {})
                        RageUI.Button("Lever les mains", nil, {RightLabel = "²"}, true, {})
                        RageUI.Button("Pointer du doigt", nil, {RightLabel = "B"}, true, {})
                        RageUI.Button("Radio", nil, {RightLabel = "F9"}, true, {})
                        RageUI.Button("Menu Job", nil, {RightLabel = "F6"}, true, {})
                        RageUI.Button("Menu Organisation", nil, {RightLabel = "F7"}, true, {})
                    end)
                  Wait(0)
                end
            end)
    end
end

Keys.Register('F1', 'F1', 'touche pour ouvrir le menu touche', function() -- Ouvrir le menu touche via une touche (pour changer remplacer les F1 par la touche)
    Touche()
end)