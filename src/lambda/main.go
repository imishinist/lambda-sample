package main

import (
  "context"
  "log"

  "github.com/aws/aws-lambda-go/lambda"
)

func Handler(ctx context.Context) error {
  log.Println("Hello, World!!!!!")
  return nil
}

func main() {
  lambda.Start(Handler)
}
