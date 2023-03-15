package main

import (
	"github.com/cosmos/cosmos-sdk/codec"
	sdk "github.com/cosmos/cosmos-sdk/types"
	profilestypess "github.com/desmos-labs/desmos/v2/x/profiles/types"
	junomessages "github.com/forbole/juno/v3/modules/messages"
)

// desmosMessageAddressesParser represents a parser able to get the addresses of the involved
// account from a Desmos message
var desmosMessageAddressesParser = junomessages.JoinMessageParsers(
	profilesMessageAddressesParser,
)

// profilesMessageAddressesParser represents a MessageAddressesParser for the x/profiles module
func profilesMessageAddressesParser(_ codec.Codec, cosmosMsg sdk.Msg) ([]string, error) {
	switch msg := cosmosMsg.(type) {

	case *profilestypess.MsgRequestDTagTransfer:
		return []string{msg.Sender, msg.Receiver}, nil

	case *profilestypess.MsgCancelDTagTransferRequest:
		return []string{msg.Sender, msg.Receiver}, nil

	case *profilestypess.MsgAcceptDTagTransferRequest:
		return []string{msg.Sender, msg.Receiver}, nil

	case *profilestypess.MsgRefuseDTagTransferRequest:
		return []string{msg.Sender, msg.Receiver}, nil

	case *profilestypess.MsgCreateRelationship:
		return []string{msg.Sender, msg.Receiver}, nil

	case *profilestypess.MsgDeleteRelationship:
		return []string{msg.User, msg.Counterparty}, nil

	case *profilestypess.MsgBlockUser:
		return []string{msg.Blocker, msg.Blocked}, nil

	case *profilestypess.MsgUnblockUser:
		return []string{msg.Blocker, msg.Blocked}, nil

	}

	return nil, junomessages.MessageNotSupported(cosmosMsg)
}
