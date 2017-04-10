module BCE
  class SMS
    include Singleton
    include ApiUtil

    def remind_44h(phone)
      #return if Rails.env.development?
      # puts '!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'
      # puts '!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'
      # puts '!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'
      # puts '!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'
      ret = request(
          method: :post,
          host: 'sms.bj.baidubce.com',
          url: '/bce/v2/message',
          payload: {
              invokeId: 'dkwL6mUT-7JNv-H5Z3',
              phoneNumber: phone,
              templateCode: 'smsTpl:d60a7867db0b4225b3aff3d44845d880'
          }
      )
      @a = JSON.parse(ret)
      puts @a
    end
  end
end
