.class public Lorg/spongycastle/x509/X509CertificatePair;
.super Ljava/lang/Object;
.source "X509CertificatePair.java"


# instance fields
.field private forward:Ljava/security/cert/X509Certificate;

.field private reverse:Ljava/security/cert/X509Certificate;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/x509/CertificatePair;)V
    .locals 2
    .param p1, "pair"    # Lorg/spongycastle/asn1/x509/CertificatePair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/CertificatePair;->getForward()Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Lorg/spongycastle/jce/provider/X509CertificateObject;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/CertificatePair;->getForward()Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/X509CertificateObject;-><init>(Lorg/spongycastle/asn1/x509/Certificate;)V

    iput-object v0, p0, Lorg/spongycastle/x509/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    .line 52
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/CertificatePair;->getReverse()Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 54
    new-instance v0, Lorg/spongycastle/jce/provider/X509CertificateObject;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/CertificatePair;->getReverse()Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/X509CertificateObject;-><init>(Lorg/spongycastle/asn1/x509/Certificate;)V

    iput-object v0, p0, Lorg/spongycastle/x509/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    .line 56
    :cond_1
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 117
    if-nez p1, :cond_1

    .line 150
    :cond_0
    :goto_0
    return v3

    .line 121
    :cond_1
    instance-of v4, p1, Lorg/spongycastle/x509/X509CertificatePair;

    if-eqz v4, :cond_0

    move-object v2, p1

    .line 125
    check-cast v2, Lorg/spongycastle/x509/X509CertificatePair;

    .line 126
    .local v2, "pair":Lorg/spongycastle/x509/X509CertificatePair;
    const/4 v1, 0x1

    .line 127
    .local v1, "equalReverse":Z
    const/4 v0, 0x1

    .line 128
    .local v0, "equalForward":Z
    iget-object v4, p0, Lorg/spongycastle/x509/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    if-eqz v4, :cond_4

    .line 130
    iget-object v4, p0, Lorg/spongycastle/x509/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    iget-object v5, v2, Lorg/spongycastle/x509/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    invoke-virtual {v4, v5}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 139
    :cond_2
    :goto_1
    iget-object v4, p0, Lorg/spongycastle/x509/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    if-eqz v4, :cond_5

    .line 141
    iget-object v4, p0, Lorg/spongycastle/x509/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    iget-object v5, v2, Lorg/spongycastle/x509/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    invoke-virtual {v4, v5}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 150
    :cond_3
    :goto_2
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 134
    :cond_4
    iget-object v4, v2, Lorg/spongycastle/x509/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    if-eqz v4, :cond_2

    .line 136
    const/4 v0, 0x0

    goto :goto_1

    .line 145
    :cond_5
    iget-object v4, v2, Lorg/spongycastle/x509/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    if-eqz v4, :cond_3

    .line 147
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public getForward()Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/spongycastle/x509/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getReverse()Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/spongycastle/x509/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 155
    const/4 v0, -0x1

    .line 156
    .local v0, "hash":I
    iget-object v1, p0, Lorg/spongycastle/x509/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lorg/spongycastle/x509/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 160
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/x509/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_1

    .line 162
    mul-int/lit8 v0, v0, 0x11

    .line 163
    iget-object v1, p0, Lorg/spongycastle/x509/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 165
    :cond_1
    return v0
.end method
