class MessageSerializer
  include FastJsonapi::ObjectSerializer
  attributes :"user_id,", :"conversation_id,", :content
end
