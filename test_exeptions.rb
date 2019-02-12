class SpecialError < RuntimeError
    puts SpecialError.ancestors[1]
    puts SpecialError.ancestors[2]
    puts SpecialError.ancestors[3]
    puts SpecialError.ancestors[4]
end