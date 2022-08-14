class Card < ActiveRecord::Base
    belongs_to :user
    belongs_to :type

    def self.full_data
    
    newArr=[]
    self.all.map do |d|
        newArr.push(d.id)
    end
    
    dataRandom=find(newArr.sample)
    Type.all.find do |dat|
        if(dat.id==dataRandom.type_id)
           return {"id":dataRandom.id,"card_name":dataRandom.card_name, "card_attack": dataRandom.card_attack, "card_defense":dataRandom.card_defense,"type_img":dat.type_img, "type_name":dat.type_name}
         end
      end
    end

    def self.values_card
        # self.first.attributes.values
        newarr=[]
        self.all.map do |data|
            Type.all.map do |dat|
                if(dat.id==data.type_id)
                    newarr.push({"id":data.id,"card_name":data.card_name, "card_attack": data.card_attack, "card_defense":data.card_defense,"user_id":data.user_id,"type_id":dat.id, "type_name":dat.type_name})
                end
            end
        end
        newarr
    end
end