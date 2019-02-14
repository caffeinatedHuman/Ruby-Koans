class CanNotBeTreatedAsString
    def to_s
        "non-string-like"
    end
end

def test_normally_objects_cannot_be_used_where_strings_are_expected
    
    puts File.exist?(CanNotBeTreatedAsString.new)
    
end

test_normally_objects_cannot_be_used_where_strings_are_expected