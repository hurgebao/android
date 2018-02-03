.class public Lorg/spongycastle/cert/path/validations/BasicConstraintsValidation;
.super Ljava/lang/Object;
.source "BasicConstraintsValidation.java"

# interfaces
.implements Lorg/spongycastle/cert/path/CertPathValidation;


# instance fields
.field private bc:Lorg/spongycastle/asn1/x509/BasicConstraints;

.field private isMandatory:Z

.field private maxPathLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/spongycastle/cert/path/validations/BasicConstraintsValidation;-><init>(Z)V

    .line 23
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "isMandatory"    # Z

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean p1, p0, Lorg/spongycastle/cert/path/validations/BasicConstraintsValidation;->isMandatory:Z

    .line 28
    return-void
.end method


# virtual methods
.method public copy()Lorg/spongycastle/util/Memoable;
    .locals 2

    .prologue
    .line 87
    new-instance v0, Lorg/spongycastle/cert/path/validations/BasicConstraintsValidation;

    iget-boolean v1, p0, Lorg/spongycastle/cert/path/validations/BasicConstraintsValidation;->isMandatory:Z

    invoke-direct {v0, v1}, Lorg/spongycastle/cert/path/validations/BasicConstraintsValidation;-><init>(Z)V

    .line 89
    .local v0, "v":Lorg/spongycastle/cert/path/validations/BasicConstraintsValidation;
    iget-object v1, p0, Lorg/spongycastle/cert/path/validations/BasicConstraintsValidation;->bc:Lorg/spongycastle/asn1/x509/BasicConstraints;

    iput-object v1, v0, Lorg/spongycastle/cert/path/validations/BasicConstraintsValidation;->bc:Lorg/spongycastle/asn1/x509/BasicConstraints;

    .line 90
    iget v1, p0, Lorg/spongycastle/cert/path/validations/BasicConstraintsValidation;->maxPathLength:I

    iput v1, v0, Lorg/spongycastle/cert/path/validations/BasicConstraintsValidation;->maxPathLength:I

    .line 92
    return-object v0
.end method

.method public reset(Lorg/spongycastle/util/Memoable;)V
    .locals 2
    .param p1, "other"    # Lorg/spongycastle/util/Memoable;

    .prologue
    .line 97
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/cert/path/validations/BasicConstraintsValidation;

    .line 99
    .local v0, "v":Lorg/spongycastle/cert/path/validations/BasicConstraintsValidation;
    iget-boolean v1, v0, Lorg/spongycastle/cert/path/validations/BasicConstraintsValidation;->isMandatory:Z

    iput-boolean v1, p0, Lorg/spongycastle/cert/path/validations/BasicConstraintsValidation;->isMandatory:Z

    .line 100
    iget-object v1, v0, Lorg/spongycastle/cert/path/validations/BasicConstraintsValidation;->bc:Lorg/spongycastle/asn1/x509/BasicConstraints;

    iput-object v1, p0, Lorg/spongycastle/cert/path/validations/BasicConstraintsValidation;->bc:Lorg/spongycastle/asn1/x509/BasicConstraints;

    .line 101
    iget v1, v0, Lorg/spongycastle/cert/path/validations/BasicConstraintsValidation;->maxPathLength:I

    iput v1, p0, Lorg/spongycastle/cert/path/validations/BasicConstraintsValidation;->maxPathLength:I

    .line 102
    return-void
.end method
