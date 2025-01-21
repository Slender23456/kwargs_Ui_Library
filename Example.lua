local Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/7yhx/kwargs_Ui_Library/main/source.lua"))()

local UI = Lib:Create{
   Theme = "Dark", -- ou qualquer outro tema
   Size = UDim2.new(0, 555, 0, 400) -- padrão
}

local Main = UI:Tab{
   Name = "Main"
}

local AutoFarmDivider = Main:Divider{
   Name = "Auto Farm"
}

local QuitDivider = Main:Divider{
   Name = "Quit"
}

local isAutoCollecting = false
local isAutoOpening = false

-- Função para coletar estrelas na área Magma Stream
function collectStars()
    while isAutoCollecting do
        -- Código para coletar estrelas na área Magma Stream
        print("Coletando estrelas na área Magma Stream")
        wait(2) -- Ajuste o tempo de espera conforme necessário
    end
end

-- Função para abrir automaticamente o ovo Devil Egg
function openDevilEgg()
    while isAutoOpening do
        -- Código para abrir o ovo Devil Egg
        print("Abrindo ovo Devil Egg")
        wait(5) -- Ajuste o tempo de espera conforme necessário
    end
end

-- Função anti-AFK
function antiAFK()
    while true do
        wait(60)
        local VirtualUser = game:service('VirtualUser')
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new())
    end
end

-- Botão para ativar/desativar a coleta automática de estrelas
local autoCollectButton = Main:Button{
    Name = "Ativar/Desativar Coleta Automática de Estrelas",
    Callback = function()
        isAutoCollecting = not isAutoCollecting
        if isAutoCollecting then
            spawn(collectStars)
        end
    end
}

-- Botão para ativar/desativar a abertura automática do ovo Devil Egg
local autoOpenButton = Main:Button{
    Name = "Ativar/Desativar Abertura Automática de Devil Egg",
    Callback = function()
        isAutoOpening = not isAutoOpening
        if isAutoOpening then
            spawn(openDevilEgg)
        end
    end
}

-- Inicializar anti-AFK
spawn(antiAFK)

