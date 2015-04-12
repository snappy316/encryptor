(class Page
  constructor: () ->
    @encoder = new Encoder()
    _encoder = @encoder

    $('#encrypt').click () ->
      _encoder.protect()

    $('#decrypt').click () ->
      password = prompt('What is the pass phrase?')
      cypher = window.location.href.replace('http://localhost:4000/decode.html?', '')
      $('#decodeMsg').html( _encoder.decrypt(cypher, password) )
)()
