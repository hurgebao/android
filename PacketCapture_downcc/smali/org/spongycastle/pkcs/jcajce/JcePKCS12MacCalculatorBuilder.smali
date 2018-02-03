.class public Lorg/spongycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilder;
.super Ljava/lang/Object;
.source "JcePKCS12MacCalculatorBuilder.java"

# interfaces
.implements Lorg/spongycastle/pkcs/PKCS12MacCalculatorBuilder;


# instance fields
.field private algorithm:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private helper:Lorg/spongycastle/jcajce/util/JcaJceHelper;

.field private iterationCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p0, v0}, Lorg/spongycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilder;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 1
    .param p1, "hashAlgorithm"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lorg/spongycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilder;->helper:Lorg/spongycastle/jcajce/util/JcaJceHelper;

    .line 39
    const/16 v0, 0x400

    iput v0, p0, Lorg/spongycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilder;->iterationCount:I

    .line 48
    iput-object p1, p0, Lorg/spongycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilder;->algorithm:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 49
    return-void
.end method
