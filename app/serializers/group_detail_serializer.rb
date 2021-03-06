class GroupDetailSerializer < ActiveModel::Serializer
  @@except=[]#[:name,:id]
  has_many :scientists, :events, :positions, :keywords

  def attributes    
    data=object.attributes.symbolize_keys
    @@except.each { |e| data.delete e  }
	data
  end
end
