.class public Lorg/spongycastle/asn1/x509/TBSCertList;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "TBSCertList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/asn1/x509/TBSCertList$1;,
        Lorg/spongycastle/asn1/x509/TBSCertList$EmptyEnumeration;,
        Lorg/spongycastle/asn1/x509/TBSCertList$RevokedCertificatesEnumeration;,
        Lorg/spongycastle/asn1/x509/TBSCertList$CRLEntry;
    }
.end annotation


# instance fields
.field crlExtensions:Lorg/spongycastle/asn1/x509/Extensions;

.field issuer:Lorg/spongycastle/asn1/x500/X500Name;

.field nextUpdate:Lorg/spongycastle/asn1/x509/Time;

.field revokedCertificates:Lorg/spongycastle/asn1/ASN1Sequence;

.field signature:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field thisUpdate:Lorg/spongycastle/asn1/x509/Time;

.field version:Lorg/spongycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 5
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 171
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 172
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v3, 0x7

    if-le v2, v3, :cond_1

    .line 174
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad sequence size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 177
    :cond_1
    const/4 v0, 0x0

    .line 179
    .local v0, "seqPos":I
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v2, :cond_5

    .line 181
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "seqPos":I
    .local v1, "seqPos":I
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/x509/TBSCertList;->version:Lorg/spongycastle/asn1/ASN1Integer;

    move v0, v1

    .line 188
    .end local v1    # "seqPos":I
    .restart local v0    # "seqPos":I
    :goto_0
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "seqPos":I
    .restart local v1    # "seqPos":I
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/x509/TBSCertList;->signature:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 189
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "seqPos":I
    .restart local v0    # "seqPos":I
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/x509/TBSCertList;->issuer:Lorg/spongycastle/asn1/x500/X500Name;

    .line 190
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "seqPos":I
    .restart local v1    # "seqPos":I
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Time;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/x509/TBSCertList;->thisUpdate:Lorg/spongycastle/asn1/x509/Time;

    .line 192
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lorg/spongycastle/asn1/ASN1UTCTime;

    if-nez v2, :cond_2

    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    if-nez v2, :cond_2

    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lorg/spongycastle/asn1/x509/Time;

    if-eqz v2, :cond_6

    .line 197
    :cond_2
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "seqPos":I
    .restart local v0    # "seqPos":I
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Time;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/x509/TBSCertList;->nextUpdate:Lorg/spongycastle/asn1/x509/Time;

    .line 200
    :goto_1
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lorg/spongycastle/asn1/DERTaggedObject;

    if-nez v2, :cond_3

    .line 203
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "seqPos":I
    .restart local v1    # "seqPos":I
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/x509/TBSCertList;->revokedCertificates:Lorg/spongycastle/asn1/ASN1Sequence;

    move v0, v1

    .line 206
    .end local v1    # "seqPos":I
    .restart local v0    # "seqPos":I
    :cond_3
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lorg/spongycastle/asn1/DERTaggedObject;

    if-eqz v2, :cond_4

    .line 209
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1TaggedObject;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/x509/TBSCertList;->crlExtensions:Lorg/spongycastle/asn1/x509/Extensions;

    .line 211
    :cond_4
    return-void

    .line 185
    :cond_5
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/spongycastle/asn1/x509/TBSCertList;->version:Lorg/spongycastle/asn1/ASN1Integer;

    goto/16 :goto_0

    .end local v0    # "seqPos":I
    .restart local v1    # "seqPos":I
    :cond_6
    move v0, v1

    .end local v1    # "seqPos":I
    .restart local v0    # "seqPos":I
    goto :goto_1
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/TBSCertList;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 157
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/TBSCertList;

    if-eqz v0, :cond_0

    .line 159
    check-cast p0, Lorg/spongycastle/asn1/x509/TBSCertList;

    .line 166
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 161
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 163
    new-instance v0, Lorg/spongycastle/asn1/x509/TBSCertList;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/TBSCertList;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 166
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getExtensions()Lorg/spongycastle/asn1/x509/Extensions;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertList;->crlExtensions:Lorg/spongycastle/asn1/x509/Extensions;

    return-object v0
.end method

.method public getIssuer()Lorg/spongycastle/asn1/x500/X500Name;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertList;->issuer:Lorg/spongycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public getNextUpdate()Lorg/spongycastle/asn1/x509/Time;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertList;->nextUpdate:Lorg/spongycastle/asn1/x509/Time;

    return-object v0
.end method

.method public getRevokedCertificateEnumeration()Ljava/util/Enumeration;
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertList;->revokedCertificates:Lorg/spongycastle/asn1/ASN1Sequence;

    if-nez v0, :cond_0

    .line 268
    new-instance v0, Lorg/spongycastle/asn1/x509/TBSCertList$EmptyEnumeration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/asn1/x509/TBSCertList$EmptyEnumeration;-><init>(Lorg/spongycastle/asn1/x509/TBSCertList;Lorg/spongycastle/asn1/x509/TBSCertList$1;)V

    .line 271
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/x509/TBSCertList$RevokedCertificatesEnumeration;

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/TBSCertList;->revokedCertificates:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/asn1/x509/TBSCertList$RevokedCertificatesEnumeration;-><init>(Lorg/spongycastle/asn1/x509/TBSCertList;Ljava/util/Enumeration;)V

    goto :goto_0
.end method

.method public getSignature()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertList;->signature:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getThisUpdate()Lorg/spongycastle/asn1/x509/Time;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertList;->thisUpdate:Lorg/spongycastle/asn1/x509/Time;

    return-object v0
.end method

.method public getVersionNumber()I
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertList;->version:Lorg/spongycastle/asn1/ASN1Integer;

    if-nez v0, :cond_0

    .line 217
    const/4 v0, 0x1

    .line 219
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertList;->version:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .prologue
    .line 281
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 283
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/TBSCertList;->version:Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/TBSCertList;->version:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 287
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/TBSCertList;->signature:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 288
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/TBSCertList;->issuer:Lorg/spongycastle/asn1/x500/X500Name;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 290
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/TBSCertList;->thisUpdate:Lorg/spongycastle/asn1/x509/Time;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 291
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/TBSCertList;->nextUpdate:Lorg/spongycastle/asn1/x509/Time;

    if-eqz v1, :cond_1

    .line 293
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/TBSCertList;->nextUpdate:Lorg/spongycastle/asn1/x509/Time;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 297
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/TBSCertList;->revokedCertificates:Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_2

    .line 299
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/TBSCertList;->revokedCertificates:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 302
    :cond_2
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/TBSCertList;->crlExtensions:Lorg/spongycastle/asn1/x509/Extensions;

    if-eqz v1, :cond_3

    .line 304
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/spongycastle/asn1/x509/TBSCertList;->crlExtensions:Lorg/spongycastle/asn1/x509/Extensions;

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 307
    :cond_3
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
