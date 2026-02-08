-- Blood Pact - Logger
-- Color-coded chat output for debug/info/warning/error messages

BloodPact_Logger = {}

BloodPact_Logger.LEVEL = {
    INFO    = 1,
    WARNING = 2,
    ERROR   = 3
}

-- Default: show warnings and errors only
BloodPact_Logger.currentLevel = BloodPact_Logger.LEVEL.WARNING

function BloodPact_Logger:SetLevel(level)
    self.currentLevel = level
end

function BloodPact_Logger:Info(msg)
    if self.currentLevel <= self.LEVEL.INFO then
        DEFAULT_CHAT_FRAME:AddMessage("|cFF00FF00[BloodPact]|r " .. tostring(msg))
    end
end

function BloodPact_Logger:Warning(msg)
    if self.currentLevel <= self.LEVEL.WARNING then
        DEFAULT_CHAT_FRAME:AddMessage("|cFFFFAA00[BloodPact]|r " .. tostring(msg))
    end
end

function BloodPact_Logger:Error(msg)
    if self.currentLevel <= self.LEVEL.ERROR then
        DEFAULT_CHAT_FRAME:AddMessage("|cFFFF4444[BloodPact]|r " .. tostring(msg))
    end
end

-- Always shown regardless of log level
function BloodPact_Logger:Print(msg)
    DEFAULT_CHAT_FRAME:AddMessage("|cFFFF6600[BloodPact]|r " .. tostring(msg))
end
