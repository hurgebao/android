.class public Lorg/spongycastle/pqc/asn1/ParSet;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "ParSet.java"


# static fields
.field private static final ZERO:Ljava/math/BigInteger;


# instance fields
.field private h:[I

.field private k:[I

.field private t:I

.field private w:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/pqc/asn1/ParSet;->ZERO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(I[I[I[I)V
    .locals 0
    .param p1, "t"    # I
    .param p2, "h"    # [I
    .param p3, "w"    # [I
    .param p4, "k"    # [I

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 78
    iput p1, p0, Lorg/spongycastle/pqc/asn1/ParSet;->t:I

    .line 79
    iput-object p2, p0, Lorg/spongycastle/pqc/asn1/ParSet;->h:[I

    .line 80
    iput-object p3, p0, Lorg/spongycastle/pqc/asn1/ParSet;->w:[I

    .line 81
    iput-object p4, p0, Lorg/spongycastle/pqc/asn1/ParSet;->k:[I

    .line 82
    return-void
.end method


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 8

    .prologue
    .line 120
    new-instance v2, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 121
    .local v2, "seqOfPSh":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v3, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 122
    .local v3, "seqOfPSw":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 124
    .local v1, "seqOfPSK":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lorg/spongycastle/pqc/asn1/ParSet;->h:[I

    array-length v5, v5

    if-ge v0, v5, :cond_0

    .line 126
    new-instance v5, Lorg/spongycastle/asn1/ASN1Integer;

    iget-object v6, p0, Lorg/spongycastle/pqc/asn1/ParSet;->h:[I

    aget v6, v6, v0

    int-to-long v6, v6

    invoke-direct {v5, v6, v7}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v2, v5}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 127
    new-instance v5, Lorg/spongycastle/asn1/ASN1Integer;

    iget-object v6, p0, Lorg/spongycastle/pqc/asn1/ParSet;->w:[I

    aget v6, v6, v0

    int-to-long v6, v6

    invoke-direct {v5, v6, v7}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v5}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 128
    new-instance v5, Lorg/spongycastle/asn1/ASN1Integer;

    iget-object v6, p0, Lorg/spongycastle/pqc/asn1/ParSet;->k:[I

    aget v6, v6, v0

    int-to-long v6, v6

    invoke-direct {v5, v6, v7}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v1, v5}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_0
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 133
    .local v4, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v5, Lorg/spongycastle/asn1/ASN1Integer;

    iget v6, p0, Lorg/spongycastle/pqc/asn1/ParSet;->t:I

    int-to-long v6, v6

    invoke-direct {v5, v6, v7}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v4, v5}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 134
    new-instance v5, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v5, v2}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v4, v5}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 135
    new-instance v5, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v5, v3}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v4, v5}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 136
    new-instance v5, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v5, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v4, v5}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 138
    new-instance v5, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v5, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v5
.end method
