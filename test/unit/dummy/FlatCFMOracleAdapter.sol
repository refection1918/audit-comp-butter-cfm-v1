// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.20;

import "src/FlatCFMOracleAdapter.sol";

contract DummyFlatCFMOracleAdapter is FlatCFMOracleAdapter {
    function askDecisionQuestion(uint256 decisionTemplateId, FlatCFMQuestionParams calldata flatCFMQuestionParams)
        external
        payable
        override
        returns (bytes32)
    {}

    function askMetricQuestion(
        uint256 metricTemplateId,
        GenericScalarQuestionParams calldata genericScalarQuestionParams,
        string memory outcomeName
    ) external payable override returns (bytes32) {}

    function getAnswer(bytes32 questionID) external view override returns (bytes32) {}

    function isInvalid(bytes32 answer) external pure override returns (bool) {}
}
