.class public Lorg/spongycastle/cert/path/validations/KeyUsageValidation;
.super Ljava/lang/Object;
.source "KeyUsageValidation.java"

# interfaces
.implements Lorg/spongycastle/cert/path/CertPathValidation;


# instance fields
.field private isMandatory:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/spongycastle/cert/path/validations/KeyUsageValidation;-><init>(Z)V

    .line 19
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "isMandatory"    # Z

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean p1, p0, Lorg/spongycastle/cert/path/validations/KeyUsageValidation;->isMandatory:Z

    .line 24
    return-void
.end method


# virtual methods
.method public copy()Lorg/spongycastle/util/Memoable;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lorg/spongycastle/cert/path/validations/KeyUsageValidation;

    iget-boolean v1, p0, Lorg/spongycastle/cert/path/validations/KeyUsageValidation;->isMandatory:Z

    invoke-direct {v0, v1}, Lorg/spongycastle/cert/path/validations/KeyUsageValidation;-><init>(Z)V

    return-object v0
.end method

.method public reset(Lorg/spongycastle/util/Memoable;)V
    .locals 2
    .param p1, "other"    # Lorg/spongycastle/util/Memoable;

    .prologue
    .line 59
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/cert/path/validations/KeyUsageValidation;

    .line 61
    .local v0, "v":Lorg/spongycastle/cert/path/validations/KeyUsageValidation;
    iget-boolean v1, v0, Lorg/spongycastle/cert/path/validations/KeyUsageValidation;->isMandatory:Z

    iput-boolean v1, p0, Lorg/spongycastle/cert/path/validations/KeyUsageValidation;->isMandatory:Z

    .line 62
    return-void
.end method
