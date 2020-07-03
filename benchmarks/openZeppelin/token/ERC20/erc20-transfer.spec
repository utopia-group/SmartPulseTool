[]<>(success(IERC20.transfer(recipient, amount)) {amount <= IERC20.balanceOf(msg.sender) && IERC20.balanceOf(msg.sender) > 0})

[](call(IERC20.transfer) {} ==> <>(success(IERC20.transfer(recipient, amount)) {amount <= IERC20.balanceOf(msg.sender) && IERC20.balanceOf(msg.sender) > 0}))

[](call(IERC20.transfer(recipient, amount)) {amount <= IERC20.balanceOf(msg.sender) && IERC20.balanceOf(msg.sender) > 0 && recipient != null} ==> <>(success(IERC20.transfer)))

[](call(IERC20.transfer(recipient, amount)) {amount <= IERC20.balanceOf(msg.sender) && IERC20.balanceOf(msg.sender) > 0 && recipient == null} ==> <>(fail(IERC20.transfer)))
