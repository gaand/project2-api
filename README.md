
# User authentication

## Register

```
curl --include --request POST --header "Content-Type: application/json" -d '{
  "credentials": {
    "email": "test@test.com",
    "password": "test",
    "password_confirmation": "test"
  }
}' http://localhost:3000/register
```

## Login

```
curl --request POST --header "Content-Type: application/json" -d '{
  "credentials": {
    "email": "test@test.com",
    "password": "test"
  }
}' http://localhost:3000/login
```

## Logout

```
curl --request DELETE --header "Authorization: Token token=c017d611187e3350baffc52d35a4df69" http://localhost:3000/logout/1
```

# Users

## List

```
curl --header "Authorization: Token token=c017d611187e3350baffc52d35a4df69" http://localhost:3000/events
```

# events

## List

```
curl --header "Authorization: Token token=830fe72293758fc09c75bcb05a27a57d" http://localhost:3000/users
```

**OR**

```
curl http://localhost:3000/users
```

## Create

```
curl --request POST --header "Authorization: Token token=0b28e4e26a487ff7100dd98101f9b13e" --header "Content-Type: application/json" -d '{
  "event": {
  "business_kind":"bar",
  "name":"bar1",
  "website":"www.bar1.com",
  "phone_number":"555-555-5551",
  "event_date":"2015-11-11",
  "group_size":"3",
  "location_id":"29",
  "user_id":"70"
  }
}'  http://localhost:3000/events
```
