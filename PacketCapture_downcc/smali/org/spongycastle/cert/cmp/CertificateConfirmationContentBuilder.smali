.class public Lorg/spongycastle/cert/cmp/CertificateConfirmationContentBuilder;
.super Ljava/lang/Object;
.source "CertificateConfirmationContentBuilder.java"


# instance fields
.field private acceptedCerts:Ljava/util/List;

.field private acceptedReqIds:Ljava/util/List;

.field private digestAlgFinder:Lorg/spongycastle/operator/DigestAlgorithmIdentifierFinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lorg/spongycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    invoke-direct {v0}, Lorg/spongycastle/operator/DefaultDigestAlgorithmIdentifierFinder;-><init>()V

    invoke-direct {p0, v0}, Lorg/spongycastle/cert/cmp/CertificateConfirmationContentBuilder;-><init>(Lorg/spongycastle/operator/DigestAlgorithmIdentifierFinder;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/operator/DigestAlgorithmIdentifierFinder;)V
    .locals 1
    .param p1, "digestAlgFinder"    # Lorg/spongycastle/operator/DigestAlgorithmIdentifierFinder;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/cert/cmp/CertificateConfirmationContentBuilder;->acceptedCerts:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/cert/cmp/CertificateConfirmationContentBuilder;->acceptedReqIds:Ljava/util/List;

    .line 32
    iput-object p1, p0, Lorg/spongycastle/cert/cmp/CertificateConfirmationContentBuilder;->digestAlgFinder:Lorg/spongycastle/operator/DigestAlgorithmIdentifierFinder;

    .line 33
    return-void
.end method
