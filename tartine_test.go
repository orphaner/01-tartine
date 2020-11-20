package tartine

import (
	"github.com/stretchr/testify/assert"
	"testing"
)

func TestThat(t *testing.T) {
	i := 10
	assert.Equal(t, 10, i)
}
