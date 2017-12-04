urls = File.open("config/urls.yml") { |file| YAML.load(file) }
logger = Logger.new STDOUT

task :generate_list => :environment do
  logger.info 'Generating list of urls...'

  urls.map do |url|
    list = ListOfUrl.new
    list.url = url
    list.save
  end

  logger.info "Was generated #{urls.count} urls"
end
