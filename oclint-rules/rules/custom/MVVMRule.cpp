#include "oclint/AbstractASTVisitorRule.h"
#include "oclint/RuleSet.h"

using namespace std;
using namespace clang;
using namespace oclint;
#include <iostream>

class MVVMRule : public AbstractASTVisitorRule<MVVMRule>
{
public:
    virtual const string name() const override
    {
        return "Property in 'ViewModel' Class interface should be readonly.";
    }

    virtual int priority() const override
    {
        return 3;
    }

    virtual const string category() const override
    {
        return "mvvm";
    }
    
    virtual unsigned int supportedLanguages() const override
    {
        return LANG_OBJC;
    }

#ifdef DOCGEN
    virtual const std::string since() const override
    {
        return "0.18.10";
    }

    virtual const std::string description() const override
    {
        return "Property in 'ViewModel' Class interface should be readonly.";
    }

    virtual const std::string example() const override
    {
        return R"rst(
.. code-block:: cpp

    @interface FooViewModel : NSObject // This is a "ViewModel" Class.
    
    @property (nonatomic, strong) NSObject *bar; // should be readonly.
    
    @end
        )rst";
    }

    virtual const std::string fileName() const override
    {
        return "MVVMRule.cpp";
    }

#endif

    virtual void setUp() override {}
    virtual void tearDown() override {}

    /* Visit ObjCImplementationDecl */
    bool VisitObjCImplementationDecl(ObjCImplementationDecl *node)
    {
        ObjCInterfaceDecl *interface = node->getClassInterface();
        
        bool isViewModel = interface->getName().endswith("ViewModel");
        if (!isViewModel) {
            return false;
        }
        for (auto property = interface->instprop_begin(),
             propertyEnd = interface->instprop_end(); property != propertyEnd; property++)
        {
            clang::ObjCPropertyDecl *propertyDecl = (clang::ObjCPropertyDecl *)*property;
            if (propertyDecl->getName().startswith("UI")) {
                addViolation(propertyDecl, this);
            }
            auto attrs = propertyDecl->getPropertyAttributes();
            bool isReadwrite = (attrs & ObjCPropertyDecl::PropertyAttributeKind::OBJC_PR_readwrite) > 0;
            if (isReadwrite && isViewModel) {
                addViolation(propertyDecl, this);
            }
        }
        return true;
    }
};

static RuleSet rules(new MVVMRule());
