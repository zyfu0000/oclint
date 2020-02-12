#include "TestRuleOnCode.h"
#include "rules/custom/FCKBlockCaptureStrongSelfRule.cpp"

TEST(FCKBlockCaptureStrongSelfRuleTest, PropertyTest)
{
    FCKBlockCaptureStrongSelfRule rule;
    EXPECT_EQ(3, rule.priority());
    EXPECT_EQ("f c k block capture strong self", rule.name());
    EXPECT_EQ("custom", rule.category());
}

TEST(FCKBlockCaptureStrongSelfRuleTest, FirstFailingTest)
{
    EXPECT_FALSE("Start writing a new test");
}
