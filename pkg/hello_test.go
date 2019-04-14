package pkg

import "testing"

func TestHello(t *testing.T) {
	tests := []struct {
		name string
	}{
		{
			name: "failing test",
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			t.Fail()
		})
	}
}
