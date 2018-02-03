.class public Lorg/spongycastle/jcajce/spec/PBKDF2KeySpec;
.super Ljavax/crypto/spec/PBEKeySpec;
.source "PBKDF2KeySpec.java"


# instance fields
.field private prf:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method public constructor <init>([C[BIILorg/spongycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 0
    .param p1, "password"    # [C
    .param p2, "salt"    # [B
    .param p3, "iterationCount"    # I
    .param p4, "keySize"    # I
    .param p5, "prf"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 28
    iput-object p5, p0, Lorg/spongycastle/jcajce/spec/PBKDF2KeySpec;->prf:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 29
    return-void
.end method


# virtual methods
.method public getPrf()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/spongycastle/jcajce/spec/PBKDF2KeySpec;->prf:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method
