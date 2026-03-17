
echo "Starting gateway..."
jolie services/serverJeerTest.ol &

sleep 2

echo "Starting peer service..."
jolie services/jeer.ol &

sleep 2

echo "Running client..."
jolie client/client.ol
