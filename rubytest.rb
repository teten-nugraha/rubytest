require "pathname"

$folder = Array.new
$jmlFile = 0
def rec_path(path, file= false)
    # puts path
    
    path.children.collect do |child|
      # p "child #{child}"
      if file and child.file?
        child
        $jmlFile +=1
      elsif child.directory?
        p child
        $folder << child
        rec_path(child, file) + [child]
      end
    end.select { |x| x }.flatten(1)
end

def coba3(path)
    p Dir["#{path}/**/**/"]
end

def countFiles(folder)
  p Dir["#{folder}/**/*"].length
end

def scandir(path)
    folder = []
    jmlFile = 0
    Dir.each_child(path) { |file| 
        
        p "#{file} adala sebuah directory" 

    #     # if (File.directory?file)
    #     #     puts "#{file} adalah direktori"
    #     # else
    #     #     puts "#{file} adalah file"
    #     # end

    #     # save ke array
    #     # if (File.directory?(file))
    #     #     folder << file
    #     # else
    #     #     jmlFile += 1
    #     # end 
    }

    # puts "jumlah folder #{folder.size} "
    # puts "jumlah file #{jmlFile} "
    
end

# path = 'C:\Users\nuna\Documents\RUBY-DEV\DropsuiteTest'
print "Input Path: "
input = gets.strip
# coba3(path)
# scandir(path)
# only directories
# rec_path(Pathname.new(path), false)
# directories and normal files
rec_path(Pathname.new("DropsuiteTest"), true)
# coba4(path)
# coba4(DropsuiteTest)
# $folder.map{|str| str.split.last} #=> ["1","2","3"]
p $folder
p $jmlFile