(class Encoder
  setMessage: ->
    @message = $('#message').val()

  getPassword: ->
    @password = prompt("Enter encoding key")

  setUrl: ->
    e = @encrypt()
    @encryptedUrl = window.location.href + 'decode.html?' + @encrypt()

  replaceMessageWithUrl:  ->
    msg = "Your encrypted message is\n\n" + @encryptedUrl
    $('#message').val(msg)

  encrypt: ->
    CryptoJS.AES.encrypt(this.message, this.password)

  decrypt: (cypher, pass) ->
    CryptoJS.AES.decrypt(cypher, pass).toString(CryptoJS.enc.Utf8)

  protect: ->
    @setMessage()
    @getPassword()
    @setUrl()
    @replaceMessageWithUrl()
)()
