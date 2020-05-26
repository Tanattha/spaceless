Dir[File.join('db', 'seeds', '*.rb')].sort.each do |seed|
    load seed
  end