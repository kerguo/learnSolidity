
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CommentLikeContract {

    struct Comment {
        uint id;
        address author;
        string comment;
        uint count;
    }

    uint public nextId = 1;
    mapping(uint => Comment) public comments;

    mapping(uint => mapping(address => bool)) public liked;

    event CommentPosted(
        uint indexed id, // 评论的id， 从1开始每次评论id加1
        address indexed author,
        string comment
    );

    event CommentLiked(uint indexed id, address indexed liker);

    // 用户发评论
    function postComment(string memory _comment) external {
        require(bytes(_comment).length > 0, "comment is not allowed as null");
        comments[nextId] = Comment(
            {
                id: nextId,
                author: msg.sender,
                comment: _comment,
                count: 0
            }
        );
        emit CommentPosted(nextId, msg.sender, _comment);
        nextId++;
    }

    //点赞
    function likeComment(uint _commentId) external {
        require(_commentId > 0 && _commentId < nextId, "This is an invalid comment ID");
        require(!liked[_commentId][msg.sender], "You had already thumbed up this comment");

        liked[_commentId][msg.sender] = true;
        comments[_commentId].count++;

        emit CommentLiked(_commentId, msg.sender);
    }

}

// 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
// 0xc4d5177E415a5f5116Dc07Db14273f2755Ef7aAe
// 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2