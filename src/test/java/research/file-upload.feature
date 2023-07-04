Feature:  file upload

  Scenario: file upload

    * url 'https://httpbin.org/post'
    Given multipart file myFile = { read: 'test.pdf', filename: 'upload-name.pdf', contentType: 'application/pdf' }
    * multipart file dataFiles = { value: '', filename: 'test.txt', contentType: 'text-plain' }
    * multipart field date = 'somedate'
    * multipart field user = 'username'
    * multipart field id = 'id'
    * method post

#  If you want a zero-length file, you can do this:
#    * multipart file dataFiles = { value: '', filename: 'test.txt', contentType: 'text-plain' }
