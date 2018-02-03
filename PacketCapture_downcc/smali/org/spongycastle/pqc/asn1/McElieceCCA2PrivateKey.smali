.class public Lorg/spongycastle/pqc/asn1/McElieceCCA2PrivateKey;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "McElieceCCA2PrivateKey.java"


# instance fields
.field private encField:[B

.field private encGp:[B

.field private encH:[B

.field private encP:[B

.field private encqInv:[[B

.field private k:I

.field private n:I

.field private oid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;IILorg/spongycastle/pqc/math/linearalgebra/GF2mField;Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;Lorg/spongycastle/pqc/math/linearalgebra/Permutation;Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)V
    .locals 3
    .param p1, "oid"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "n"    # I
    .param p3, "k"    # I
    .param p4, "field"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;
    .param p5, "goppaPoly"    # Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .param p6, "p"    # Lorg/spongycastle/pqc/math/linearalgebra/Permutation;
    .param p7, "h"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;
    .param p8, "qInv"    # [Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/spongycastle/pqc/asn1/McElieceCCA2PrivateKey;->oid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 36
    iput p2, p0, Lorg/spongycastle/pqc/asn1/McElieceCCA2PrivateKey;->n:I

    .line 37
    iput p3, p0, Lorg/spongycastle/pqc/asn1/McElieceCCA2PrivateKey;->k:I

    .line 38
    invoke-virtual {p4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->getEncoded()[B

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/pqc/asn1/McElieceCCA2PrivateKey;->encField:[B

    .line 39
    invoke-virtual {p5}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->getEncoded()[B

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/pqc/asn1/McElieceCCA2PrivateKey;->encGp:[B

    .line 40
    invoke-virtual {p6}, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->getEncoded()[B

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/pqc/asn1/McElieceCCA2PrivateKey;->encP:[B

    .line 41
    invoke-virtual {p7}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->getEncoded()[B

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/pqc/asn1/McElieceCCA2PrivateKey;->encH:[B

    .line 42
    array-length v1, p8

    new-array v1, v1, [[B

    iput-object v1, p0, Lorg/spongycastle/pqc/asn1/McElieceCCA2PrivateKey;->encqInv:[[B

    .line 44
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p8

    if-eq v0, v1, :cond_0

    .line 46
    iget-object v1, p0, Lorg/spongycastle/pqc/asn1/McElieceCCA2PrivateKey;->encqInv:[[B

    aget-object v2, p8, v0

    invoke-virtual {v2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->getEncoded()[B

    move-result-object v2

    aput-object v2, v1, v0

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 6

    .prologue
    .line 127
    new-instance v2, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 129
    .local v2, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v3, p0, Lorg/spongycastle/pqc/asn1/McElieceCCA2PrivateKey;->oid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 131
    new-instance v3, Lorg/spongycastle/asn1/ASN1Integer;

    iget v4, p0, Lorg/spongycastle/pqc/asn1/McElieceCCA2PrivateKey;->n:I

    int-to-long v4, v4

    invoke-direct {v3, v4, v5}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 134
    new-instance v3, Lorg/spongycastle/asn1/ASN1Integer;

    iget v4, p0, Lorg/spongycastle/pqc/asn1/McElieceCCA2PrivateKey;->k:I

    int-to-long v4, v4

    invoke-direct {v3, v4, v5}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 137
    new-instance v3, Lorg/spongycastle/asn1/DEROctetString;

    iget-object v4, p0, Lorg/spongycastle/pqc/asn1/McElieceCCA2PrivateKey;->encField:[B

    invoke-direct {v3, v4}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 140
    new-instance v3, Lorg/spongycastle/asn1/DEROctetString;

    iget-object v4, p0, Lorg/spongycastle/pqc/asn1/McElieceCCA2PrivateKey;->encGp:[B

    invoke-direct {v3, v4}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 143
    new-instance v3, Lorg/spongycastle/asn1/DEROctetString;

    iget-object v4, p0, Lorg/spongycastle/pqc/asn1/McElieceCCA2PrivateKey;->encP:[B

    invoke-direct {v3, v4}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 146
    new-instance v3, Lorg/spongycastle/asn1/DEROctetString;

    iget-object v4, p0, Lorg/spongycastle/pqc/asn1/McElieceCCA2PrivateKey;->encH:[B

    invoke-direct {v3, v4}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 149
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 150
    .local v0, "asnQInv":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/spongycastle/pqc/asn1/McElieceCCA2PrivateKey;->encqInv:[[B

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 152
    new-instance v3, Lorg/spongycastle/asn1/DEROctetString;

    iget-object v4, p0, Lorg/spongycastle/pqc/asn1/McElieceCCA2PrivateKey;->encqInv:[[B

    aget-object v4, v4, v1

    invoke-direct {v3, v4}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    :cond_0
    new-instance v3, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v3, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 157
    new-instance v3, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v3, v2}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v3
.end method
