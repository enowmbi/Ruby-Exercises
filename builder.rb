require 'builder'
xml = Builder::XmlMarkup.new(:target=>STDOUT, :indent=>2)
xml.coder {
xml.name 'Matsumoto', :nickname => 'Matz'
xml.language 'Ruby'
}
xml.coder{
xml.name 'Enow Mbi',:nickname=> 'Enowman'
xml.language ['Ruby','JavaScript','C#.NET'].join(', ')
}



