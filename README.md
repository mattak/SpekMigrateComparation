# SpekMigrateCompare

# Result

Comparation of test files vs time to run tests with JUnit, Kotest and Spek.

| N [files] | JUnit [sec] | Kotest [sec] | Spek [sec] |
|-----------|-------------|--------------|------------|
| 128       | 6.250       | 16.622       | 11.169     |
| 256       | 7.795       | 22.184       | 13.227     |
| 512       | 10.781      | 27.67        | 15.43      |
| 1024      | 14.242      | 35.994       | 23.225     |

# How to run

At first, edit settings.gradle and select one project `app` or `app_kotest` or `app_spek`.
Then generate test files and measure time of tests.

```shell
./script/gen_<type>.rb <N>
./gradlew clean && time ./gradlew testDebug
```