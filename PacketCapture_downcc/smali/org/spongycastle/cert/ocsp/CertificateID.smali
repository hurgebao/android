.class public Lorg/spongycastle/cert/ocsp/CertificateID;
.super Ljava/lang/Object;
.source "CertificateID.java"


# static fields
.field public static final HASH_SHA1:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;


# instance fields
.field private final id:Lorg/spongycastle/asn1/ocsp/CertID;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/spongycastle/asn1/DERNull;->INSTANCE:Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lorg/spongycastle/cert/ocsp/CertificateID;->HASH_SHA1:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 99
    instance-of v1, p1, Lorg/spongycastle/cert/ocsp/CertificateID;

    if-nez v1, :cond_0

    .line 101
    const/4 v1, 0x0

    .line 106
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 104
    check-cast v0, Lorg/spongycastle/cert/ocsp/CertificateID;

    .line 106
    .local v0, "obj":Lorg/spongycastle/cert/ocsp/CertificateID;
    iget-object v1, p0, Lorg/spongycastle/cert/ocsp/CertificateID;->id:Lorg/spongycastle/asn1/ocsp/CertID;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ocsp/CertID;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    iget-object v2, v0, Lorg/spongycastle/cert/ocsp/CertificateID;->id:Lorg/spongycastle/asn1/ocsp/CertID;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ocsp/CertID;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/spongycastle/cert/ocsp/CertificateID;->id:Lorg/spongycastle/asn1/ocsp/CertID;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ocsp/CertID;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Primitive;->hashCode()I

    move-result v0

    return v0
.end method
