/**
 * Copyright (C) 2020-2022 Paranoid Android
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package vendor.aospa.biometrics.face;

import vendor.aospa.biometrics.face.ISenseServiceReceiver;

/** @hide */
interface ISenseService {
    oneway void authenticate(long operationId);

    oneway void cancel();

    oneway void enroll(in byte[] cryptoToken, int timeout, in int[] disabledFeatures);

    int enumerate();

    long generateChallenge(int timeout);

    int getAuthenticatorId();

    oneway void remove(int biometricId);

    oneway void resetLockout(in byte[] cryptoToken);

    int revokeChallenge();

    oneway void setCallback(in ISenseServiceReceiver receiver);

    int getFeatureCount();

    boolean getFeature(int feature, int faceId);

    oneway void setFeature(int feature, boolean enable, in byte[] token, int faceId);
}
