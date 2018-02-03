.class public Lorg/spongycastle/eac/operator/jcajce/JcaEACSignerBuilder;
.super Ljava/lang/Object;
.source "JcaEACSignerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/eac/operator/jcajce/JcaEACSignerBuilder$SignatureOutputStream;
    }
.end annotation


# static fields
.field private static final sigNames:Ljava/util/Hashtable;


# instance fields
.field private helper:Lorg/spongycastle/eac/operator/jcajce/EACHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/spongycastle/eac/operator/jcajce/JcaEACSignerBuilder;->sigNames:Ljava/util/Hashtable;

    .line 31
    sget-object v0, Lorg/spongycastle/eac/operator/jcajce/JcaEACSignerBuilder;->sigNames:Ljava/util/Hashtable;

    const-string v1, "SHA1withRSA"

    sget-object v2, Lorg/spongycastle/asn1/eac/EACObjectIdentifiers;->id_TA_RSA_v1_5_SHA_1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lorg/spongycastle/eac/operator/jcajce/JcaEACSignerBuilder;->sigNames:Ljava/util/Hashtable;

    const-string v1, "SHA256withRSA"

    sget-object v2, Lorg/spongycastle/asn1/eac/EACObjectIdentifiers;->id_TA_RSA_v1_5_SHA_256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lorg/spongycastle/eac/operator/jcajce/JcaEACSignerBuilder;->sigNames:Ljava/util/Hashtable;

    const-string v1, "SHA1withRSAandMGF1"

    sget-object v2, Lorg/spongycastle/asn1/eac/EACObjectIdentifiers;->id_TA_RSA_PSS_SHA_1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lorg/spongycastle/eac/operator/jcajce/JcaEACSignerBuilder;->sigNames:Ljava/util/Hashtable;

    const-string v1, "SHA256withRSAandMGF1"

    sget-object v2, Lorg/spongycastle/asn1/eac/EACObjectIdentifiers;->id_TA_RSA_PSS_SHA_256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lorg/spongycastle/eac/operator/jcajce/JcaEACSignerBuilder;->sigNames:Ljava/util/Hashtable;

    const-string v1, "SHA512withRSA"

    sget-object v2, Lorg/spongycastle/asn1/eac/EACObjectIdentifiers;->id_TA_RSA_v1_5_SHA_512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lorg/spongycastle/eac/operator/jcajce/JcaEACSignerBuilder;->sigNames:Ljava/util/Hashtable;

    const-string v1, "SHA512withRSAandMGF1"

    sget-object v2, Lorg/spongycastle/asn1/eac/EACObjectIdentifiers;->id_TA_RSA_PSS_SHA_512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lorg/spongycastle/eac/operator/jcajce/JcaEACSignerBuilder;->sigNames:Ljava/util/Hashtable;

    const-string v1, "SHA1withECDSA"

    sget-object v2, Lorg/spongycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lorg/spongycastle/eac/operator/jcajce/JcaEACSignerBuilder;->sigNames:Ljava/util/Hashtable;

    const-string v1, "SHA224withECDSA"

    sget-object v2, Lorg/spongycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_224:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lorg/spongycastle/eac/operator/jcajce/JcaEACSignerBuilder;->sigNames:Ljava/util/Hashtable;

    const-string v1, "SHA256withECDSA"

    sget-object v2, Lorg/spongycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lorg/spongycastle/eac/operator/jcajce/JcaEACSignerBuilder;->sigNames:Ljava/util/Hashtable;

    const-string v1, "SHA384withECDSA"

    sget-object v2, Lorg/spongycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_384:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lorg/spongycastle/eac/operator/jcajce/JcaEACSignerBuilder;->sigNames:Ljava/util/Hashtable;

    const-string v1, "SHA512withECDSA"

    sget-object v2, Lorg/spongycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lorg/spongycastle/eac/operator/jcajce/DefaultEACHelper;

    invoke-direct {v0}, Lorg/spongycastle/eac/operator/jcajce/DefaultEACHelper;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/eac/operator/jcajce/JcaEACSignerBuilder;->helper:Lorg/spongycastle/eac/operator/jcajce/EACHelper;

    .line 179
    return-void
.end method
