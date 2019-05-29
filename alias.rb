class String
    alias_method :real_length,:length

    def length
        super > 5 ? "long" : "short"
    end
end

p "Jesus is Lord".real_length
p "Jesus is Lord".length