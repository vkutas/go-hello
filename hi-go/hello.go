package main

import (
	"fmt"

	"github.com/gin-gonic/gin"
)

func main() {
	r := gin.Default()

	r.GET("/hello", func(c *gin.Context) {
		c.String(200, "Hello, World!")
	})
	err := r.Run(":3000")
	if err != nil {
		fmt.Println(err)
	}

}
