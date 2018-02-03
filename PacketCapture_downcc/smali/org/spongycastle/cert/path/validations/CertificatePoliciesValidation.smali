.class public Lorg/spongycastle/cert/path/validations/CertificatePoliciesValidation;
.super Ljava/lang/Object;
.source "CertificatePoliciesValidation.java"

# interfaces
.implements Lorg/spongycastle/cert/path/CertPathValidation;


# instance fields
.field private explicitPolicy:I

.field private inhibitAnyPolicy:I

.field private policyMapping:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "pathLength"    # I

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, v0, v0, v0}, Lorg/spongycastle/cert/path/validations/CertificatePoliciesValidation;-><init>(IZZZ)V

    .line 24
    return-void
.end method

.method constructor <init>(IZZZ)V
    .locals 2
    .param p1, "pathLength"    # I
    .param p2, "isExplicitPolicyRequired"    # Z
    .param p3, "isAnyPolicyInhibited"    # Z
    .param p4, "isPolicyMappingInhibited"    # Z

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    if-eqz p2, :cond_0

    .line 34
    iput v1, p0, Lorg/spongycastle/cert/path/validations/CertificatePoliciesValidation;->explicitPolicy:I

    .line 44
    :goto_0
    if-eqz p3, :cond_1

    .line 46
    iput v1, p0, Lorg/spongycastle/cert/path/validations/CertificatePoliciesValidation;->inhibitAnyPolicy:I

    .line 56
    :goto_1
    if-eqz p4, :cond_2

    .line 58
    iput v1, p0, Lorg/spongycastle/cert/path/validations/CertificatePoliciesValidation;->policyMapping:I

    .line 64
    :goto_2
    return-void

    .line 38
    :cond_0
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lorg/spongycastle/cert/path/validations/CertificatePoliciesValidation;->explicitPolicy:I

    goto :goto_0

    .line 50
    :cond_1
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lorg/spongycastle/cert/path/validations/CertificatePoliciesValidation;->inhibitAnyPolicy:I

    goto :goto_1

    .line 62
    :cond_2
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lorg/spongycastle/cert/path/validations/CertificatePoliciesValidation;->policyMapping:I

    goto :goto_2
.end method


# virtual methods
.method public copy()Lorg/spongycastle/util/Memoable;
    .locals 2

    .prologue
    .line 139
    new-instance v0, Lorg/spongycastle/cert/path/validations/CertificatePoliciesValidation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/spongycastle/cert/path/validations/CertificatePoliciesValidation;-><init>(I)V

    return-object v0
.end method

.method public reset(Lorg/spongycastle/util/Memoable;)V
    .locals 1
    .param p1, "other"    # Lorg/spongycastle/util/Memoable;

    .prologue
    .line 144
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/cert/path/validations/CertificatePoliciesValidation;

    .line 145
    .local v0, "v":Lorg/spongycastle/cert/path/validations/CertificatePoliciesValidation;
    return-void
.end method
