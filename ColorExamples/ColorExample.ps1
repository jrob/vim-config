$request = [System.Net.WebRequest]::Create("http://www.somelocation.com/testlink.aspx")
$response = $request.GetResponse()
$requestStream = $response.GetResponseStream()
$readStream = new-object System.IO.StreamReader $requestStream
new-variable db
$db = $readStream.ReadToEnd()
$readStream.Close()
$response.Close()
