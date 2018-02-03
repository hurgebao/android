.class public Lorg/spongycastle/cert/path/validations/ParentCertIssuedValidation;
.super Ljava/lang/Object;
.source "ParentCertIssuedValidation.java"

# interfaces
.implements Lorg/spongycastle/cert/path/CertPathValidation;


# instance fields
.field private contentVerifierProvider:Lorg/spongycastle/cert/X509ContentVerifierProviderBuilder;

.field private workingAlgId:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private workingIssuerName:Lorg/spongycastle/asn1/x500/X500Name;

.field private workingPublicKey:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;


# direct methods
.method public constructor <init>(Lorg/spongycastle/cert/X509ContentVerifierProviderBuilder;)V
    .locals 0
    .param p1, "contentVerifierProvider"    # Lorg/spongycastle/cert/X509ContentVerifierProviderBuilder;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/spongycastle/cert/path/validations/ParentCertIssuedValidation;->contentVerifierProvider:Lorg/spongycastle/cert/X509ContentVerifierProviderBuilder;

    .line 31
    return-void
.end method


# virtual methods
.method public copy()Lorg/spongycastle/util/Memoable;
    .locals 2

    .prologue
    .line 109
    new-instance v0, Lorg/spongycastle/cert/path/validations/ParentCertIssuedValidation;

    iget-object v1, p0, Lorg/spongycastle/cert/path/validations/ParentCertIssuedValidation;->contentVerifierProvider:Lorg/spongycastle/cert/X509ContentVerifierProviderBuilder;

    invoke-direct {v0, v1}, Lorg/spongycastle/cert/path/validations/ParentCertIssuedValidation;-><init>(Lorg/spongycastle/cert/X509ContentVerifierProviderBuilder;)V

    .line 111
    .local v0, "v":Lorg/spongycastle/cert/path/validations/ParentCertIssuedValidation;
    iget-object v1, p0, Lorg/spongycastle/cert/path/validations/ParentCertIssuedValidation;->workingAlgId:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v1, v0, Lorg/spongycastle/cert/path/validations/ParentCertIssuedValidation;->workingAlgId:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 112
    iget-object v1, p0, Lorg/spongycastle/cert/path/validations/ParentCertIssuedValidation;->workingIssuerName:Lorg/spongycastle/asn1/x500/X500Name;

    iput-object v1, v0, Lorg/spongycastle/cert/path/validations/ParentCertIssuedValidation;->workingIssuerName:Lorg/spongycastle/asn1/x500/X500Name;

    .line 113
    iget-object v1, p0, Lorg/spongycastle/cert/path/validations/ParentCertIssuedValidation;->workingPublicKey:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    iput-object v1, v0, Lorg/spongycastle/cert/path/validations/ParentCertIssuedValidation;->workingPublicKey:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 115
    return-object v0
.end method

.method public reset(Lorg/spongycastle/util/Memoable;)V
    .locals 2
    .param p1, "other"    # Lorg/spongycastle/util/Memoable;

    .prologue
    .line 120
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/cert/path/validations/ParentCertIssuedValidation;

    .line 122
    .local v0, "v":Lorg/spongycastle/cert/path/validations/ParentCertIssuedValidation;
    iget-object v1, v0, Lorg/spongycastle/cert/path/validations/ParentCertIssuedValidation;->contentVerifierProvider:Lorg/spongycastle/cert/X509ContentVerifierProviderBuilder;

    iput-object v1, p0, Lorg/spongycastle/cert/path/validations/ParentCertIssuedValidation;->contentVerifierProvider:Lorg/spongycastle/cert/X509ContentVerifierProviderBuilder;

    .line 123
    iget-object v1, v0, Lorg/spongycastle/cert/path/validations/ParentCertIssuedValidation;->workingAlgId:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v1, p0, Lorg/spongycastle/cert/path/validations/ParentCertIssuedValidation;->workingAlgId:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 124
    iget-object v1, v0, Lorg/spongycastle/cert/path/validations/ParentCertIssuedValidation;->workingIssuerName:Lorg/spongycastle/asn1/x500/X500Name;

    iput-object v1, p0, Lorg/spongycastle/cert/path/validations/ParentCertIssuedValidation;->workingIssuerName:Lorg/spongycastle/asn1/x500/X500Name;

    .line 125
    iget-object v1, v0, Lorg/spongycastle/cert/path/validations/ParentCertIssuedValidation;->workingPublicKey:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    iput-object v1, p0, Lorg/spongycastle/cert/path/validations/ParentCertIssuedValidation;->workingPublicKey:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 126
    return-void
.end method
