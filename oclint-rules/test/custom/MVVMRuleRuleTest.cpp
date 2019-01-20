#include "TestRuleOnCode.h"
#include "rules/custom/MVVMRuleRule.cpp"

TEST(MVVMRuleRuleTest, PropertyTest)
{
    MVVMRuleRule rule;
    EXPECT_EQ(3, rule.priority());
    EXPECT_EQ("m v v m rule", rule.name());
    EXPECT_EQ("custom", rule.category());
}

TEST(MVVMRuleRuleTest, FirstFailingTest)
{
    EXPECT_FALSE("Start writing a new test");
}
