classdef (TestTags = {'SystemTest'}) Sampletest < matlab.unittest.TestCase
    methods(Test)
        function test1(testCase)
            testCase.verifyEqual(3,3);
        end
    end
end
