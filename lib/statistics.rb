require "statistics/version"

module Statistics

    #Sort the Ruby files in your project by number of has_many
 
    HAS_MANY_SEARCH = "ack \" has_many \" -c | awk -F \":\" '{print $2,$1}' | grep -v \"0\" sort -rn"

    # Use this if you are brave
    # HAS_MANY_SEARCH_WITH_FILE = File.expand_path('../../../bin/has_many.sh', __FILE__)

    def self.get_raw(command)
      `#{command}`
    end

    def self.get_has_many_relationships
      get_raw(HAS_MANY_SEARCH).split("\n")
    end
  end


#Count the lines of Ruby code in your app
# find . -iname "*.rb" -type f -exec cat {} \; | wc -l

# #Sort the Ruby files in your project by LOC
# find . -iname "*.rb" -type f -exec wc -l {} \; | sort -rn


